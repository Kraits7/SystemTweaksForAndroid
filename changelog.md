# Version 4.0
# ChangeLog:

**System & Boot**
- Optimized Boot Sequence: Refined service.sh and startup scripts to reduce overall device boot time.
- Dex2Oat Refactor: Switched compiler filters to 'everything' for maximum app performance and smoother system execution.
- HW Acceleration: Enabled full GPU composition and hardware UI rendering to eliminate interface lag.

**Gaming & Input**
- Input Latency Reduction: Tweaked windowsmgr and touch responsiveness flags for near-instant aim feedback.
- High Refresh Rate Stability: Optimized SurfaceFlinger offsets to maintain stable FPS during intense gameplay (Focus: CS2/Competitive).

**Memory Management**
- Advanced ZRAM Configuration: Implemented 4GB ZRAM using the 'zstd' algorithm for the best balance between compression and CPU speed.
- Kernel VM Tuning: Adjusted swappiness and dirty_ratio to prevent stutters when multitasking.

**Network & Cleanup**
- Redundancy Purge: Removed obsolete and conflicting "placebo" tweaks for a cleaner and more stable AOSP experience.
- Network Optimization: Enhanced TCP buffers to ensure lower jitter and more stable ping in online matches.

**Build Date: April 2026**
