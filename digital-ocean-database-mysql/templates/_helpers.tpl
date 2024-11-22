{{- define "app-environment-suffix" -}}
{{- if ne    .Values.environment "production" -}}
{{ printf "-%s" .Values.environment }}
{{- end -}}
{{- end -}}
