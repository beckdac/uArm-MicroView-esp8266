function getParameterDefinitions() {
	return [
		{ name: 'board_width', caption: 'PCB board width:', type: 'float', default: 56.0 },
		{ name: 'board_length', caption: 'PCB board length:', type: 'float', default: 102. },
		{ name: 'thickness', caption: 'Box wall thickness:', type: 'float', default: 1.5 },
		{ name: 'inset', caption: 'Slot inset:', type: 'float', default : 1 },
		{ name: 'box_height', caption: 'Control box height:', type: 'float', default : 30 },
		{ name: 'slot_height', caption: 'Vertical location in box wall of PCB slot:', type: 'float', default : 10 },
		{ name: 'frame_mount_screw_diameter', caption: 'Plate to frame mounting screw diameter:', 
				type: 'float', default : 4.6 },
		{ name: 'frame_mount_screw_head_diameter', caption: 'Plate to frame mounting screw head diameter:', 
				type: 'float', default : 7 },
		{ name: 'frame_mount_screw_head_height', caption: 'Plate to frame mounting screw head height:', 
				type: 'float', default : 5.2 },
		{ name: 'frame_mount_screw_c2c_width', caption: 'Plate to frame mounting screw center to center distance (width):', 
				type: 'float', default: 49.2 },
		{ name: 'frame_mount_screw_c2c_length', caption: 'Plate to frame mounting screw center to center distance (length):', 
				type: 'float', default: 70.2 },
		{ name: 'frame_mount_screw_offset', caption: 'Plate to frame mounting screw offset from back of box:',
				type: 'float', default: 11.9 },
		{ name: 'board_mount_standoff_right', caption: 'PCB to box mounting standoff distance from back of box (right):',
				type: 'float', default: 49.6 },
		{ name: 'board_mount_standoff_left', caption: 'PCB to box mounting standoff distance from back of box (left):',
				type: 'float', default: 98.0 },
		{ name: 'board_mount_standoff_screw_diameter', caption: 'PCB to box mounting standoff screw diameter:',
				type: 'float', default: 3.0 },
		{ name: 'board_mount_standoff_edge_inset', caption: 'PCB to box mounting standoff edge inset:',
				type: 'float', default: 1.9 },
		{ name: 'board_mount_standoff_screw_clearence_height', caption: 'PCB to box mounting standoff screw head clearence height:',
				type: 'float', default: 10 },
		{ name: 'power_wire_zip_tie_hole_diameter', caption: 'Power wire zip tie hole in base diameter:',
				type: 'float', default: 4 },
	];
}


function main(params) {
	var board_width = params.board_width;
	var board_width_half = board_width / 2.;
	var board_length = params.board_length;
	var board_length_half = board_length / 2.;
	var thickness = params.thickness;
	var thickness_half = thickness / 2.;
	var extension = (thickness * 2.);
	var inset = params.inset;
	var inset_half = inset / 2.;
	var box_height = params.box_height;
	var box_height_half = box_height / 2.;
	var slot_height = params.slot_height;
	var frame_mount_screw_diameter = params.frame_mount_screw_diameter;
	var frame_mount_screw_radius = frame_mount_screw_diameter / 2.;
	var frame_mount_screw_c2c_width = params.frame_mount_screw_c2c_width;
	var frame_mount_screw_c2c_width_half = frame_mount_screw_c2c_width / 2.;
	var frame_mount_screw_c2c_length = params.frame_mount_screw_c2c_length;
	var frame_mount_screw_c2c_length_half = frame_mount_screw_c2c_length / 2.;
	var frame_mount_screw_head_diameter = params.frame_mount_screw_head_diameter;
	var frame_mount_screw_head_radius = frame_mount_screw_head_diameter / 2.;
	var frame_mount_screw_head_height = params.frame_mount_screw_head_height;
	var frame_mount_screw_offset = params.frame_mount_screw_offset;
	var board_mount_standoff_right = params.board_mount_standoff_right;
	var board_mount_standoff_left = params.board_mount_standoff_left;
	var board_mount_standoff_left_half = board_mount_standoff_left / 2.;
	var board_mount_standoff_screw_diameter = params.board_mount_standoff_screw_diameter;
	var board_mount_standoff_screw_radius = board_mount_standoff_screw_diameter / 2.;
	var board_mount_standoff_edge_inset = params.board_mount_standoff_edge_inset;
	var board_mount_standoff_screw_clearence_height = params.board_mount_standoff_screw_clearence_height;
	var power_wire_zip_tie_hole_diameter = params.power_wire_zip_tie_hole_diameter;
	var power_wire_zip_tie_hole_radius = power_wire_zip_tie_hole_diameter / 2.;

	var bottom = CSG.cube({
		center : [0,0, thickness_half], 
		radius : [((board_width_half)-inset)+thickness, (board_length_half)+extension, thickness_half]
	});
	var wall1 = CSG.cube({
		center : [-((board_width_half)-inset)-thickness_half, 0, box_height_half + thickness],
		radius : [thickness_half, (board_length_half)+extension, box_height_half]
	});
	var wall2 = CSG.cube({
		center : [((board_width_half)-inset)+thickness_half, 0, box_height_half + thickness],
		radius : [thickness_half, (board_length_half)+extension, box_height_half]
	});
	var wall3 = CSG.cube({
		center : [0, ((board_length_half - inset))+extension, box_height_half + thickness],
		radius : [(board_width_half - inset)+thickness, thickness_half, box_height_half]
	});
	var slot1 = CSG.cube({
		center : [0, -inset, slot_height + thickness],
		radius : [(board_width_half), (board_length_half)+(inset * 2), thickness / 2 ]
	});
	var mount1 = CSG.cylinder({
		start : [-frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, -thickness],
		end : [-frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		radius : frame_mount_screw_radius,
		resolution : 48
	});
	var mount2 = CSG.cylinder({
		start : [frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, -thickness],
		end : [frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		radius : frame_mount_screw_radius,
		resolution : 48
	});
	var mount3 = CSG.cylinder({
		start : [-frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, -thickness],
		end : [-frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		radius : frame_mount_screw_radius,
		resolution : 48
	});
	var mount4 = CSG.cylinder({
		start : [frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, -thickness],
		end : [frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		radius : frame_mount_screw_radius,
		resolution : 48
	});
	var mount_head1 = CSG.cylinder({
		start : [-frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		end : [-frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, frame_mount_screw_head_height + thickness],
		radius : frame_mount_screw_head_radius,
		resolution : 48
	});
	var mount_head2 = CSG.cylinder({
		start : [frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		end : [frame_mount_screw_c2c_width_half, -frame_mount_screw_c2c_length_half + frame_mount_screw_offset, frame_mount_screw_head_height + thickness],
		radius : frame_mount_screw_head_radius,
		resolution : 48
	});
	var mount_head3 = CSG.cylinder({
		start : [-frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		end : [-frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, frame_mount_screw_head_height + thickness],
		radius : frame_mount_screw_head_radius,
		resolution : 48
	});
	var mount_head4 = CSG.cylinder({
		start : [frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, thickness],
		end : [frame_mount_screw_c2c_width_half, frame_mount_screw_c2c_length_half + frame_mount_screw_offset, frame_mount_screw_head_height + thickness],
		radius : frame_mount_screw_head_radius,
		resolution : 48
	});
	var standoff_right = CSG.cylinder({
		start : [board_width_half - board_mount_standoff_edge_inset, 0, thickness],
		end : [board_width_half - board_mount_standoff_edge_inset, 0, slot_height + thickness_half],
		radius : board_mount_standoff_screw_radius + 1.5,
		resolution : 48
	}).subtract(CSG.cylinder({
		start : [board_width_half - board_mount_standoff_edge_inset, 0, slot_height/2],
		end : [board_width_half - board_mount_standoff_edge_inset, 0, slot_height + thickness_half],
		radius : board_mount_standoff_screw_radius,
		resolution : 48
	}));
	var standoff_right_clearence = CSG.cylinder({
		start : [board_width_half - board_mount_standoff_edge_inset, 0, slot_height + thickness_half],
		end : [board_width_half - board_mount_standoff_edge_inset, 0, slot_height + thickness_half + board_mount_standoff_screw_clearence_height],
		radius : board_mount_standoff_screw_radius + 1.5,
		resolution : 48
	});
	var standoff_left = CSG.cylinder({
		start : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, thickness],
		end : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, slot_height + thickness_half],
		radius : board_mount_standoff_screw_radius + 1.5,
		resolution : 48
	}).subtract(CSG.cylinder({
		start : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, slot_height/2],
		end : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, slot_height + thickness_half],
		radius : board_mount_standoff_screw_radius,
		resolution : 48
	}));
	var standoff_left_clearence = CSG.cylinder({
		start : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, slot_height + thickness_half],
		end : [-(board_width_half - board_mount_standoff_edge_inset), -board_mount_standoff_left_half, slot_height + thickness_half + board_mount_standoff_screw_clearence_height],
		radius : board_mount_standoff_screw_radius + 1.5,
		resolution : 48
	});
	var zip_tie_hole1 = CSG.cylinder({
		start : [ power_wire_zip_tie_hole_diameter, -board_length_half * .85, -thickness],
		end : [ power_wire_zip_tie_hole_diameter, -board_length_half * .85, thickness],
		radius : power_wire_zip_tie_hole_radius,
		resolution : 24
	});
	var zip_tie_hole2 = CSG.cylinder({
		start : [ -power_wire_zip_tie_hole_diameter, -board_length_half * .85, -thickness],
		end : [ -power_wire_zip_tie_hole_diameter, -board_length_half * .85, thickness],
		radius : power_wire_zip_tie_hole_radius,
		resolution : 24
	});
	return bottom.union(wall1).union(wall2).union(wall3).subtract(slot1).subtract(mount1).subtract(mount2).subtract(mount3).subtract(mount4).subtract(mount_head1).subtract(mount_head2).subtract(mount_head3).subtract(mount_head4).union(standoff_right).subtract(standoff_right_clearence).union(standoff_left).subtract(standoff_left_clearence).subtract(zip_tie_hole1).subtract(zip_tie_hole2);
}
