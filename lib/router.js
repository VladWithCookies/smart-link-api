import Router from 'koa-router';

import { SmartLinksController } from '../controllers';

const router = new Router();

router.post('/smart-links', SmartLinksController.create);

export default router;
