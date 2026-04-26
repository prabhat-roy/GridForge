{{- define "balancing-mechanism.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "balancing-mechanism.labels" -}}
app.kubernetes.io/name: balancing-mechanism
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: market
{{- end -}}

{{- define "balancing-mechanism.selectorLabels" -}}
app.kubernetes.io/name: balancing-mechanism
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
