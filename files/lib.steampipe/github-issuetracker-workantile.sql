select
  repository_full_name,
  issue_number,
  title,
  state,
  tags
from
  github_issue
where
  repository_full_name = 'vielmetti/issuetracker'
  and state = 'open'
  and tags ? 'where/workantile';
