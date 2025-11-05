mp_grid_destroy(grid)
grid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16)
mp_grid_add_instances(grid, oCollision, true)
alarm[0] = 10