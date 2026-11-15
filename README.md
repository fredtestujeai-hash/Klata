# Klata — codzienne pompki na klatkę + brzuch na stojąco

Aplikacja webowa na telefon (`index.html`), hostowana przez GitHub Pages:
https://fredtestujeai-hash.github.io/Klata/

- Plan dnia liczony z testu maksymalnego, 7 różnych dni akcentujących inne części klatki.
- Blok brzucha na stojąco po pompkach (13 ćwiczeń, część z hantlem, osobny poziom i progresja).
- Blok kettlebell na koniec (6 ćwiczeń, osobny poziom i progresja), można go wyłączyć w ustawieniach.
- Trening prowadzony seria po serii, zegar przerw, odliczanie dla ćwiczeń na czas.
- Można zakończyć trening w dowolnym momencie i zapisać zaliczone serie.
- Animowane sylwetki ćwiczeń, mapa mięśni dnia, wykresy postępu i historia.
- Rangi liczone z poziomu pompek, odznaki i kamienie milowe liczone z historii (bez nowych pól w danych).
- Dane: lokalnie w przeglądarce + synchronizacja do Supabase (tabela `klata_data`, jeden wiersz).
- Działa offline i instaluje się na ekranie głównym (manifest + service worker).

Pliki: `index.html` (cała aplikacja, konfiguracja Supabase w bloku `CLOUD`), `supabase.sql` (schemat),
`manifest.webmanifest`, `sw.js`, `icon-192.png`, `icon-512.png`.
