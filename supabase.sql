-- KLATA — schemat bazy. Wklej całość w Supabase → SQL Editor → Run.
-- Jedna tabela, jeden wiersz (id = 'fred'), cały stan aplikacji w JSON.
-- Bez logowania: dostęp ma każdy, kto zna adres projektu i klucz anon
-- (oba są w pliku aplikacji), więc to rozwiązanie na użytek prywatny.

create table if not exists public.klata_data (
  id         text primary key,
  data       jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.klata_data enable row level security;

drop policy if exists "klata_anon_select" on public.klata_data;
create policy "klata_anon_select" on public.klata_data
  for select to anon using (true);

drop policy if exists "klata_anon_insert" on public.klata_data;
create policy "klata_anon_insert" on public.klata_data
  for insert to anon with check (true);

drop policy if exists "klata_anon_update" on public.klata_data;
create policy "klata_anon_update" on public.klata_data
  for update to anon using (true) with check (true);
