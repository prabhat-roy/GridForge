{{- define "tamper-detection.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tamper-detection.labels" -}}
app.kubernetes.io/name: tamper-detection
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: ami
{{- end -}}

{{- define "tamper-detection.selectorLabels" -}}
app.kubernetes.io/name: tamper-detection
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
