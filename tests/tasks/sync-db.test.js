const { syncDB } = require("../../tasks/sync-db")

describe('Pruebasen sync-DB', () => {
    test('debe de ejecutar el proceso 2 veces', () => { 

        const times = syncDB();
        expect(times).toBe(1);

     })
})