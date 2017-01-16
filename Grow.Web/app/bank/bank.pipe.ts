import { Pipe } from '@angular/core';

@Pipe({
  name: 'truncate'
})
export class TruncateBankPipe {
  transform(value: string, args: string[]): string {
    let limit = args.length > 0 ? parseInt(args[0], 250) : 250;
    let trail = args.length > 1 ? args[1] : '...';

    return value.length > limit ? value.substring(0, limit) + trail : value;
  }
}