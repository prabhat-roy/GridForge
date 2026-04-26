{{- define "scope2-tracker.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "scope2-tracker.labels" -}}
app.kubernetes.io/name: scope2-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: carbon
{{- end -}}

{{- define "scope2-tracker.selectorLabels" -}}
app.kubernetes.io/name: scope2-tracker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
