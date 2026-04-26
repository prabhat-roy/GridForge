{{- define "switching-order.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "switching-order.labels" -}}
app.kubernetes.io/name: switching-order
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: transmission
{{- end -}}

{{- define "switching-order.selectorLabels" -}}
app.kubernetes.io/name: switching-order
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
