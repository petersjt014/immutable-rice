{ textcolor }:
''
conky.config = {
  double_buffer = true,
	alignment = 'bottom_middle',
	background = false,
	border_width = 1,
	cpu_avg_samples = 2,
  default_color = "${textcolor}",
	draw_borders = false,
	draw_graph_borders = false,
	draw_outline = false,
	draw_shades = false,
	use_xft = true,
	font = 'Mono:size=10',
	gap_y = 50,
	gap_x = 0,
	border_inner_margin = 20,
	net_avg_samples = 2,
	no_buffers = true,
	out_to_console = false,
	out_to_stderr = false,
	extra_newline = false,
	own_window = true,
	own_window_class = 'conky',
	own_window_type = 'override',
  --own_window_argb_value = 0,
  own_window_transparent = true,
	own_window_argb_visual = true,
	own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
	stippled_borders = 0,
	update_interval = 1.0,
	uppercase = false,
	use_spacer = 'none',
	show_graph_scale = false,
	show_graph_range = false,
	text_buffer_size = 1024,
};

conky.text = [[
''${alignc}CPU
''${voffset -10}
$alignc''${cpubar cpu1 6, 50}
$alignc''${cpubar cpu2 6, 100}
$alignc''${cpubar cpu3 6, 150}
$alignc''${cpubar cpu4 6, 200}
$alignc''${cpubar cpu5 6, 250}
$alignc''${cpubar cpu6 6, 300}
$alignc''${cpubar cpu7 6, 350}
$alignc''${cpubar cpu8 6, 400}
''${voffset -10}
''${alignc}RAM
$alignc''${membar 6, 500}
]];
''