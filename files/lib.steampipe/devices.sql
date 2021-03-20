select 
  hostname,
  id,
  created_at,
  project_id
from 
  equinix_metal_device 
order by 
  created_at
