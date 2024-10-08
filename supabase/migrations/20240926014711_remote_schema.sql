create table "public"."temp" (
    "id" bigint generated by default as identity not null,
    "created_at" timestamp with time zone not null default now(),
    "temp" text not null default ''::text
);


alter table "public"."temp" enable row level security;

CREATE UNIQUE INDEX temp_id_key ON public.temp USING btree (id);

CREATE UNIQUE INDEX temp_pkey ON public.temp USING btree (id);

alter table "public"."temp" add constraint "temp_pkey" PRIMARY KEY using index "temp_pkey";

alter table "public"."temp" add constraint "temp_id_key" UNIQUE using index "temp_id_key";

grant delete on table "public"."temp" to "anon";

grant insert on table "public"."temp" to "anon";

grant references on table "public"."temp" to "anon";

grant select on table "public"."temp" to "anon";

grant trigger on table "public"."temp" to "anon";

grant truncate on table "public"."temp" to "anon";

grant update on table "public"."temp" to "anon";

grant delete on table "public"."temp" to "authenticated";

grant insert on table "public"."temp" to "authenticated";

grant references on table "public"."temp" to "authenticated";

grant select on table "public"."temp" to "authenticated";

grant trigger on table "public"."temp" to "authenticated";

grant truncate on table "public"."temp" to "authenticated";

grant update on table "public"."temp" to "authenticated";

grant delete on table "public"."temp" to "service_role";

grant insert on table "public"."temp" to "service_role";

grant references on table "public"."temp" to "service_role";

grant select on table "public"."temp" to "service_role";

grant trigger on table "public"."temp" to "service_role";

grant truncate on table "public"."temp" to "service_role";

grant update on table "public"."temp" to "service_role";


