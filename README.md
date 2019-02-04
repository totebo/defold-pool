# Defold Pool
A minimal pool system for Defold.

# Installation
You can use Defold Pool in your own project by adding this project as a [Defold library dependency](http://www.defold.com/manuals/libraries/). Open your game.project file and in the dependencies field under project add:

    https://github.com/totebo/defold-pool/archive/master.zip

Or point to the ZIP file of a [specific release](https://github.com/totebo/defold-pool/releases).

## Example

      local pool = require "pool.pool"

      -- Add items to pool
      local id = "test"

      for i=1, 100 do
        local object = {test="test object"}
        pool:add( id,object )
      end


      -- Remove item from pool
      local object = pool:remove( id )
      pprint( object )

### pool.add( id, object )
Adds an object to the pool.

**PARAMETERS**

* `id` Pool id.
* `object` Object to store in pool.

### pool.remove( id )
Removes an object to the pool.

**PARAMETERS**

* `id` Pool id.
