# Klata — codzienne pompki na klatkę

Aplikacja w jednym pliku (`index.html`). Plan dnia liczony z testu maksymalnego,
trening prowadzony seria po serii z zegarem przerw, progresja na podstawie wyników,
wykresy postępu. Dane trzymane w Supabase (tabela `klata_data`, jeden wiersz), lokalna
kopia w przeglądarce działa też offline.

- `index.html` — cała aplikacja; konfiguracja Supabase w bloku `CLOUD` na początku skryptu.
- `supabase.sql` — schemat tabeli i polityki dostępu (wklej w SQL Editor).

Hostowane przez GitHub Pages z gałęzi `main`.
