declare module '@apiverve/levenshteindistance' {
  export interface levenshteindistanceOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface levenshteindistanceResponse {
    status: string;
    error: string | null;
    data: LevenshteinDistanceData;
    code?: number;
  }


  interface LevenshteinDistanceData {
      distance:      number;
      similarity:    number;
      string1Length: number;
      string2Length: number;
      string1:       string;
      string2:       string;
  }

  export default class levenshteindistanceWrapper {
    constructor(options: levenshteindistanceOptions);

    execute(callback: (error: any, data: levenshteindistanceResponse | null) => void): Promise<levenshteindistanceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: levenshteindistanceResponse | null) => void): Promise<levenshteindistanceResponse>;
    execute(query?: Record<string, any>): Promise<levenshteindistanceResponse>;
  }
}
