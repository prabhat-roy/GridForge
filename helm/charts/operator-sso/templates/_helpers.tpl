{{- define "operator-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "operator-sso.labels" -}}
app.kubernetes.io/name: operator-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: identity
{{- end -}}

{{- define "operator-sso.selectorLabels" -}}
app.kubernetes.io/name: operator-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
