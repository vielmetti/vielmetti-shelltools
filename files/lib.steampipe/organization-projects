select
  o.name as org_name,
  o.id as org_id,
  p.name as project_name,
  p.created_at as project_created
from
  equinix_metal_organization as o,
  equinix_metal_project as p
order by
  o.created_at
where
  o.id = p.organization_id
