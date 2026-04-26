{{- define "charge-scheduler.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "charge-scheduler.labels" -}}
app.kubernetes.io/name: charge-scheduler
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: battery
{{- end -}}

{{- define "charge-scheduler.selectorLabels" -}}
app.kubernetes.io/name: charge-scheduler
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
