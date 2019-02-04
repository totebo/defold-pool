
local insert = table.insert
local remove = table.remove

local M = {}
M.pool = {}

function M:add( id, object )

	local pool = M.pool
	
	if not(pool[id]) then
		pool[id] = {}
	end
	insert( pool[id], object )
	
end

function M:remove( id )

	local pool = M.pool
	return remove( pool[id] )

end

return M
