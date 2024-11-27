#!/bin/sh
set -e
for diagram in diagrams/*.puml; do
  plantuml -tsvg "$diagram" &
done

wait

typst compile presentation.typ
