select
  repository_full_name,
  issue_number,
  title,
  state,
  tags
from
  github_issue
where
  repository_full_name = 'packethost/devrel'
  and state = 'open'
  and tags ? 'wontfix';
