import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello() {
    return {
      msg: 'Hello world',
      timestamp: this.getTime(),
    };
  }

  private getTime() {
    const date = new Date();
    const hour = date.getHours();
    const minutes = date.getMinutes();
    const seconds = date.getSeconds();

    return `${date.toISOString().slice(0, 'YYYY-MM-DD'.length)} ${hour}:${minutes}:${seconds}`;
  }
}
