{{- define "dr-program.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "dr-program.labels" -}}
app.kubernetes.io/name: dr-program
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: derms
{{- end -}}

{{- define "dr-program.selectorLabels" -}}
app.kubernetes.io/name: dr-program
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
