import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello() {
    return {
      msg: 'Hello world',
      timestamp: new Date().toISOString(),
    };
  }
}
