*Toggle the code view by tapping the <> above*

# This is a basic components example
The flutter_declarative_mdx package supports input as well as formatted MDX documents. The output of these components can be validated locally using some common validations or validated remotely via API calls.

#### Plain Text Input
An input control that allows for free text to be input and sent to the model. All of the Flutter TextField types are supported via the `type` attribute.

<input type="text" label="Input Label" propertyName="example_input_1" />

```
<input
  type="text" 
  label="Input Label" 
  propertyName="example_1_text" 
/>
```

#### Selection Dropdown
<select label="Input Label" options="{
  'Option 1': 1,
  'Option 2': 2,
  'Option 3': 3
}" propertyName="example_2_selection" />

```
<select 
  label="Input Label"
  options="{
    'Option 1': 1,
    'Option 2': 2,
    'Option 3': 3,
  }"
  propertyName="example_2_selection"
/>
```
*Note that inside the options attribute any strings in the map must use a single quote, unlike true JSON.*

#### Model submission
<submit_model label="Submit Model" url="https://my.api/submissions" />

```
<submit_model
  label="Submit Model" 
  url="https://my.api/submissions" 
/>
```