# Chummer Media Factory Design v1

## Purpose

`chummer-media-factory` owns media rendering jobs, asset lifecycle, storage integration, and approval-state persistence for approved render payloads.

## In scope

- render-only contracts
- job queue and dedupe
- asset persistence and retention
- document, portrait, and video render pipelines
- signed asset access

## Out of scope

- narrative drafting
- rules evaluation
- session relay
- Spider policy
- provider routing

## Exit criteria for the bootstrap phase

- repo builds in isolation
- verification script runs
- render-only contract boundaries are documented
- no implementation dependency leaks from engine, presentation, play, or run-services
