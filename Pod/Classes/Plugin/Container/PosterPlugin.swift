import Haneke

public class PosterPlugin: UIContainerPlugin {
    private var poster = UIImageView(frame: CGRectZero)
    private var playButton = UIButton(frame: CGRectZero)
    private var url: NSURL!
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init() {
        super.init(frame: CGRectZero)
        translatesAutoresizingMaskIntoConstraints = false
        poster.contentMode = .ScaleAspectFit
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        poster.hnk_setImageFromURL(url)
    }
    
    public override func wasInstalled() {
        guard let urlString = container!.options[posterUrl] as? String else {
            removeFromSuperview()
            return
        }
        
        url = NSURL(string: urlString)!
        configurePlayButton()
        configureViews()
    }
    
    private func configurePlayButton() {
        playButton.backgroundColor = UIColor.redColor()
        playButton.setTitle("Play", forState: .Normal)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.addTarget(self, action: "playTouched", forControlEvents: .TouchUpInside)
    }
    
    func playTouched() {
        container!.mediaControlEnabled = true
        container!.play()
        hidden = true
    }
    
    private func configureViews() {
        container!.addMatchingConstraints(self)
        addSubviewMatchingConstraints(poster)
        
        addSubview(playButton)
        
        let xCenterConstraint = NSLayoutConstraint(item: playButton, attribute: .CenterX,
            relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1, constant: 0)
        addConstraint(xCenterConstraint)
        
        let yCenterConstraint = NSLayoutConstraint(item: playButton, attribute: .CenterY,
            relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1, constant: 0)
        addConstraint(yCenterConstraint)
    }
}