{{- define "customer-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "customer-sso.labels" -}}
app.kubernetes.io/name: customer-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: identity
{{- end -}}

{{- define "customer-sso.selectorLabels" -}}
app.kubernetes.io/name: customer-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
