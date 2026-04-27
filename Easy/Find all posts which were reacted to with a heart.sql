select distinct fp.*
from facebook_reactions fr inner join facebook_posts fp on fp.post_id=fr.post_id
where reaction='heart' 