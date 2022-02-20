# Alexa ASK Action for GitHub Actions 

Evaluates `ask` command.

## Usage

```yaml
- name: Deploy
uses: tunein/gha-alexa-ask@v0.1.4
id: ask
with:
  directory: 'AlexaSkill/TuneIn_Live'
  args: 'deploy -t skill-metadata --ignore-hash'
env:
  ASK_ACCESS_TOKEN: ${{ secrets.ASK_ACCESS_TOKEN }}
  ASK_REFRESH_TOKEN: ${{ secrets.ASK_REFRESH_TOKEN }}
  ASK_VENDOR_ID: ${{ secrets.ASK_VENDOR_ID }}
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  SKILL_ID: ${{ secrets.SKILL_ID }}
```

### Parameters

- `args` - arguments for `ask` command (required)
- `directory` - path to the folder with Alexa Skill (optional)

### ENVs

- `ASK_REFRESH_TOKEN` - refresh token that is used for cli config (required)

Other envs are optional, depends on your need.