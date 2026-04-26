{{- define "ops-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ops-bff.labels" -}}
app.kubernetes.io/name: ops-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: platform
{{- end -}}

{{- define "ops-bff.selectorLabels" -}}
app.kubernetes.io/name: ops-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
