-- MySpace Dashboard V6 : table et règles de sécurité
-- À exécuter dans le SQL Editor du projet Supabase avant de configurer l'application.
create table if not exists public.myspace_workspaces (
  owner_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.myspace_workspaces enable row level security;

drop policy if exists "Users can read their own workspace" on public.myspace_workspaces;
create policy "Users can read their own workspace"
  on public.myspace_workspaces for select
  to authenticated
  using (auth.uid() = owner_id);

drop policy if exists "Users can insert their own workspace" on public.myspace_workspaces;
create policy "Users can insert their own workspace"
  on public.myspace_workspaces for insert
  to authenticated
  with check (auth.uid() = owner_id);

drop policy if exists "Users can update their own workspace" on public.myspace_workspaces;
create policy "Users can update their own workspace"
  on public.myspace_workspaces for update
  to authenticated
  using (auth.uid() = owner_id)
  with check (auth.uid() = owner_id);

revoke all on public.myspace_workspaces from anon;
grant select, insert, update on public.myspace_workspaces to authenticated;
