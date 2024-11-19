{{- define "db-env-var-key" -}}
{{- if eq (.Values.databaseConnection).engineType "MySQL" -}}
MYSQL
{{- else if eq (.Values.databaseConnection).engineType "PostgreSQL" -}}
POSTGRESQL
{{- end -}}
{{- end -}}

{{- define "secret-ref-key" -}}
{{- if eq (.Values.databaseConnection).engineType "MySQL" -}}
mysql
{{- else if eq (.Values.databaseConnection).engineType "PostgreSQL" -}}
pg
{{- end -}}
{{- end -}}

{{- define "app-environment-suffix" -}}
{{- if ne    (.Values.general).environment "production" -}}
{{ printf "-%s" .Values.general.environment }}
{{- end -}}
{{- end -}}
