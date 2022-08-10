import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
    static targets = ['email', 'submit'];
    connect() {
        this.submitTarget.addEventListener('click', (e) => {
            e.preventDefault();

            if (this.emailTarget.value.length === 0) {
                console.log('inside if email field is nil')
            } else {
                // email field is not empty, do sth!
            }
        })
    }
}