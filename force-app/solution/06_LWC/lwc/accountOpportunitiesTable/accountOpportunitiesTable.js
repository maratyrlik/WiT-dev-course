import { LightningElement, api, wire } from 'lwc';
import getOpps from '@salesforce/apex/AccountOpptyController.getOpportunitiesByAccount';

export default class AccountOpportunitiesTable extends LightningElement {
  @api recordId;
  isLoading = true;
  rows = [];

  columns = [
    {
      label: 'Name',
      fieldName: 'url',
      type: 'url',
      typeAttributes: { label: { fieldName: 'Name' }, target: '_blank' }
    },
    { label: 'Amount', fieldName: 'Amount', type: 'currency' },
    { label: 'Discount %', fieldName: 'DiscountPercent__c', type: 'text' },
    { label: 'Amount After Discount', fieldName: 'AmountAfterDiscount__c', type: 'currency' }
  ];

  @wire(getOpps, { accountId: '$recordId' })
  wiredOpps({ data, error }) {
    this.isLoading = false;
    if (data) {
      this.rows = data.map(r => ({
        ...r,
        url: `/lightning/r/Opportunity/${r.Id}/view`
      }));
    } else if (error) {
      console.error(error);
      this.rows = [];
    }
  }
}