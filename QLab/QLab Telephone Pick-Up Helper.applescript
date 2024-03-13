tell application id "com.figure53.QLab.5" to tell front workspace
	set full_ring_cue to cue "1" -- set this to the cue # of the vamped single full ring audio cue
	set stop_full_ring_cue to cue "2.1" -- a very short fade (~0.1s) targeting the full_ring_cue
	set ring_out_cue to cue "2.2" -- an audio cue of just the ring-out portion of the full ring
	set devamp_full_ring_cue to cue "2.3" -- a devamp for the full ring audio cue
	set ring_decision_point to ((duration of full_ring_cue) - (duration of ring_out_cue)) -- calculates where the active ringing stops
	set cueTime to action elapsed of full_ring_cue
	if (cueTime mod (duration of full_ring_cue) < ring_decision_point) then
		start stop_full_ring_cue
		start ring_out_cue
	else
		start devamp_full_ring_cue
	end if
end tell