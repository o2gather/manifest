{{- define "helpers.list-env-variables"}}
{{- range .Values.app.env.secrets }}
- name: {{ . }}
  valueFrom:
    secretKeyRef:
      name: backend-secret
      key: {{ . }}
{{- end}}
{{- end }}