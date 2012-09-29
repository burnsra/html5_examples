<datalist id="browsers">
  <option value="Internet Explorer">
  <option value="Firefox">
  <option value="Chrome">
  <option value="Opera">
  <option value="Safari">
</datalist>
<label>${params.action.replaceAll('_', '-')}</label>
<input list="browsers" name="${params.action.replaceAll('_', '-')}" />