import orm from '../lib/orm';

export class SmartLinksController {
  static create = async (context) => {
    await orm.smartLink.create({
      data: {
        links: {
          create: context.request.body.links
        }
      }
    });

    context.status = 201;
  }
}
