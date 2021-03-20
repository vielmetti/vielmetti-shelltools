select
  d.hostname,
  d.id,
  d.created_at,
  d.project_id,
  d.state,
  p.name,
  plan.name as plan
from
  equinix_metal_device as d,
  equinix_metal_project as p,
  equinix_metal_plan as plan
where
  d.project_id = p.id
  and plan.id = d.plan_id
order by
  d.created_at
