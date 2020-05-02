
# NEWDOOM.EXE and DOOM.EXE makefile

# --------------------------------------------------------------------------
#
#      4r  use 80486 timings and register argument passing
#       c  compile only
#      d1  include line number debugging information
#      d2  include full sybolic debugging information
#      ei  force enums to be of type int
#       j  change char default from unsigned to signed
#      oa  relax aliasing checking
#      od  do not optimize
#  oe[=#]  expand functions inline, # = quads (default 20)
#      oi  use the inline library functions
#      om  generate inline 80x87 code for math functions
#      ot  optimize for time
#      ox  maximum optimization
#       s  remove stack overflow checks
#     zp1  align structures on bytes
#      zq  use quiet mode
#  /i=dir  add include directories
#
# --------------------------------------------------------------------------

CCOPTS = /d2 /omaxet /zp1 /4r /ei /j /zq /i=dmx

GLOBOBJS = &
 i_main.obj &
 i_ibm.obj &
 i_sound.obj &
 i_cyber.obj &
 i_ibm_a.obj &
 planar.obj &
 tables.obj &
 f_finale.obj &
 d_main.obj &
 d_net.obj &
 g_game.obj &
 m_menu.obj &
 m_misc.obj &
 am_map.obj &
 p_ceilng.obj &
 p_doors.obj &
 p_enemy.obj &
 p_floor.obj &
 p_inter.obj &
 p_lights.obj &
 p_map.obj &
 p_maputl.obj &
 p_plats.obj &
 p_pspr.obj &
 p_setup.obj &
 p_sight.obj &
 p_spec.obj &
 p_switch.obj &
 p_mobj.obj &
 p_telept.obj &
 p_saveg.obj &
 p_tick.obj &
 p_user.obj &
 r_bsp.obj &
 r_data.obj &
 r_draw.obj &
 r_main.obj &
 r_sky.obj &
 r_plane.obj &
 r_segs.obj &
 r_things.obj &
 w_wad.obj &
 v_video.obj &
 z_zone.obj &
 st_stuff.obj &
 st_lib.obj &
 hu_stuff.obj &
 hu_lib.obj &
 wi_stuff.obj &
 s_sound.obj &
 sounds.obj &
 dutils.obj &
 f_wipe.obj &
 info.obj &
 dmx.obj &
 usrhooks.obj &
 mus2mid.obj

newdoom.exe : $(GLOBOBJS) i_ibm.obj
 wlink @newdoom.lnk
 copy newdoom.exe doom.exe
 wstrip doom.exe
# 4gwbind 4gwpro.exe striptic.exe heretic.exe -V
# prsucc

.c.obj :
 wcc386 $(CCOPTS) $[*

.asm.obj :
 tasm /mx $[*

clean : .SYMBOLIC
 del *.exe
 del *.map
 del *.err
 del am_map.obj
 del d_main.obj
 del d_net.obj
 del dmx.obj
 del dutils.obj
 del f_finale.obj
 del f_wipe.obj
 del g_game.obj
 del hu_lib.obj
 del hu_stuff.obj
 del i_cyber.obj
 del i_ibm_a.obj
 del i_ibm.obj
 del i_main.obj
 del i_sound.obj
 del info.obj
 del m_menu.obj
 del m_misc.obj
 del mus2mid.obj
 del p_ceilng.obj
 del p_doors.obj
 del p_enemy.obj
 del p_floor.obj
 del p_inter.obj
 del p_lights.obj
 del p_map.obj
 del p_maputl.obj
 del p_mobj.obj
 del p_plats.obj
 del p_pspr.obj
 del p_saveg.obj
 del p_setup.obj
 del p_sight.obj
 del p_spec.obj
 del p_switch.obj
 del p_telept.obj
 del p_tick.obj
 del p_user.obj
 del planar.obj
 del r_bsp.obj
 del r_data.obj
 del r_draw.obj
 del r_main.obj
 del r_plane.obj
 del r_segs.obj
 del r_sky.obj
 del r_things.obj
 del s_sound.obj
 del sounds.obj
 del st_lib.obj
 del st_stuff.obj
 del tables.obj
 del usrhooks.obj
 del v_video.obj
 del w_wad.obj
 del wi_stuff.obj
 del z_zone.obj