(lang dune 3.21)
(using rocq 0.11)

(generate_opam_files true)

(name patat)

(homepage "https://github.com/kacperFKorban/patat")
(authors "Kacper Korban")
(maintainers "Kacper Korban")
(bug_reports "https://github.com/kacperFKorban/patat/issues")
(license MIT)

(package
 (name patat)
 (synopsis "A simple hypothesis matching syntax sugar")
 (depends rocq-core))
