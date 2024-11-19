{{- define "app-environment-suffix" -}}
{{- if ne    (.Values.general).environment "production" -}}
{{ printf "-%s" .Values.general.environment }}
{{- end -}}
{{- end -}}
