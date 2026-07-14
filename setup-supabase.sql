-- Cadência de Estudos: execute este script uma única vez
-- no SQL Editor do seu projeto Supabase (supabase.com)

create table if not exists cadencia (
  key text primary key,
  value jsonb,
  updated_at timestamptz default now()
);

alter table cadencia enable row level security;

create policy "leitura anon"      on cadencia for select to anon using (true);
create policy "insercao anon"     on cadencia for insert to anon with check (true);
create policy "atualizacao anon"  on cadencia for update to anon using (true);
