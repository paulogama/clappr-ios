public enum PlaybackEvent: String {
    case progress = "clappr:playback:progress"
    case timeUpdated = "clappr:playback:time_updated"
    case ready = "clappr:playback:ready"
    case buffering = "clappr:playback:buffering"
    case bufferFull = "clappr:playback:buffer_full"
    case audioSourcesUpdated = "clappr:playback:audio_sources_updated"
    case subtitleSourcesUpdated = "clappr:playback:subtitle_sources_updated"
    case settingsUpdated = "clappr:playback:settings_updated"
    case bitRate = "clappr:playback:bitrate"
    case stateChanged = "clappr:playback:state_changed"
    case dvrStateChanged = "clappr:playback:dvr_state_changed"
    case mediaControlDisabled = "clappr:playback:media_control_disabled"
    case mediaControlEnabled = "clappr:playback:media_control_enabled"
    case ended = "clappr:playback:ended"
    case play = "clappr:playback:play"
    case pause = "clappr:playback:pause"
    case error = "clappr:playback:error"
    case externalPlaybackActiveUpdated = "clappr:playback:eexternal_playback_active_updated"
}
