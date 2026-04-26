{{- define "work-order-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "work-order-service.labels" -}}
app.kubernetes.io/name: work-order-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: workforce
{{- end -}}

{{- define "work-order-service.selectorLabels" -}}
app.kubernetes.io/name: work-order-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
