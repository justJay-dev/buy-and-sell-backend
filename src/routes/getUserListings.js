import { Boom } from '@hapi/boom';
import * as admin from 'firebase-admin';
import { db } from "../database";

export const getUserListingsRoute = {
    method: "GET",
    path: "/api/users/{userId}/listings",
    handler: async (req, h) => {
        const token = req.headers.authtoken;
        const user = await admin.auth().verifyIdToken(token);
        const userId = req.params.userId;
        if(user.user_id !== userId) throw Boom.unauthorized("users can only access their own listings.")

        const {
            results,
        } = await db.query("select * from listings where user_id=?", [userId]);
        return results;
    },
};
