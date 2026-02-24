# Welcome to Northbank

We just need a few details to get your account ready.

<Callout type="info">
This page is delivered from the server and rendered natively in Flutter.
</Callout>

---

## Your details

<Form id="customer_details">

<TextField
  name="firstName"
  label="First name"
  required="true"
  autocomplete="given-name"
/>

<TextField
  name="lastName"
  label="Last name"
  required="true"
  autocomplete="family-name"
/>

<DateField
  name="dob"
  label="Date of birth"
  required="true"
/>

<EmailField
  name="email"
  label="Email address"
  required="true"
/>

<PhoneField
  name="phone"
  label="Mobile number"
/>

<Checkbox
  name="marketing"
  label="I'd like to receive product updates"
  defaultValue="false"
/>

<Button action="submit" variant="primary">
Continue
</Button>

</Form>

---

## Identity verification

<Stepper id="kyc_stepper">

<Step title="Proof of identity">

Please upload one of the following:

- Passport  
- Driving licence  
- National ID  

<FileUpload
  name="identityDoc"
  label="Upload ID document"
  accept="image/*,.pdf"
  required="true"
/>

</Step>

<Step title="Take a selfie">

We need a quick selfie to match your ID.

<SelfieCapture
  name="selfie"
  instructions="Position your face in the frame"
/>

</Step>

<Step title="Confirm details">

<Summary source="customer_details" />

<Button action="submit">
Submit verification
</Button>

</Step>

</Stepper>

---

## Live preview (server-driven content)

<Card>
### Current interest rate
<DynamicValue source="interest_rate" format="percentage" />
</Card>

---

## Support

If you get stuck you can chat with us.

<SupportChat channel="onboarding" />

---

<Divider />

<SmallPrint>
By continuing you agree to our <Link href="/terms">Terms</Link> and
<Link href="/privacy">Privacy Policy</Link>.
</SmallPrint>