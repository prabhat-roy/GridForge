{{- define "graphql-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "graphql-gateway.labels" -}}
app.kubernetes.io/name: graphql-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: platform
{{- end -}}

{{- define "graphql-gateway.selectorLabels" -}}
app.kubernetes.io/name: graphql-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
