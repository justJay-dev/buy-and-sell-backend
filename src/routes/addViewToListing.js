import { db } from "../database";
export const addViewToListingRoute = {
    method: "POST",
    path: "/api/listings/{id}/add-view",
    handler: async (req, h) => {
        const id = req.params.id;
        await db.query("UpDATE listings set views=views+1 where id =?", [id]);
        const {
            results,
        } = await db.query("select * from listings where id = ?", [id]);
        const updatedListing = results[0];
        return updatedListing;
    },
};
