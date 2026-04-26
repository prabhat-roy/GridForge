{{- define "bid-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "bid-service.labels" -}}
app.kubernetes.io/name: bid-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: trading
{{- end -}}

{{- define "bid-service.selectorLabels" -}}
app.kubernetes.io/name: bid-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
