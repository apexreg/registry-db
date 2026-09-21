# Contributing to Registry DB

Thanks for contributing! This guide explains how to contribute to the Registry DB for ApexRegistry.

## How to contribute
1. Fork this repository.
2. Create a branch: `git checkout -b feat/your-feature-name`.
3. Make your changes (SQL migrations, RPC functions, examples).
4. Test migrations on a local Supabase/Postgres instance with pgvector.
5. Open a Pull Request (PR) with a clear description of your changes.

## SQL style
- Use clear, simple SQL compatible with Postgres + pgvector.
- Add comments explaining non-obvious choices (index parameters, stability flags).
- Keep migrations idempotent where possible (CREATE IF NOT EXISTS).

## Testing
- Validate migrations on a fresh database.
- Ensure rpc_match_agents returns expected columns and ordering.

## License
By contributing, you agree that your contributions will be licensed under Apache-2.0.
