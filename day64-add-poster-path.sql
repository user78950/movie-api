begin;

alter table public.movies
  add column if not exists poster_path text;

commit;

select id, title, poster_path
from public.movies
order by id;

