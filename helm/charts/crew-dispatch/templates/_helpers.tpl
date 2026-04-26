{{- define "crew-dispatch.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "crew-dispatch.labels" -}}
app.kubernetes.io/name: crew-dispatch
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: gridforge
gridforge.io/domain: workforce
{{- end -}}

{{- define "crew-dispatch.selectorLabels" -}}
app.kubernetes.io/name: crew-dispatch
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
