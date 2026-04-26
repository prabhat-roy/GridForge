{{- define "imbalance-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "imbalance-service.labels" -}}
app.kubernetes.io/name: imbalance-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: trading
{{- end -}}

{{- define "imbalance-service.selectorLabels" -}}
app.kubernetes.io/name: imbalance-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
