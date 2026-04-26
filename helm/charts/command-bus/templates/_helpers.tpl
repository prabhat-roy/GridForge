{{- define "command-bus.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "command-bus.labels" -}}
app.kubernetes.io/name: command-bus
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: grid-ops
{{- end -}}

{{- define "command-bus.selectorLabels" -}}
app.kubernetes.io/name: command-bus
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
